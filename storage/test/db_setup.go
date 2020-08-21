package test

import (
	"github.com/s4mu3lbk/arifpay-auth/conf"
	"github.com/s4mu3lbk/arifpay-auth/storage"
)

func SetupDBConnection(globalConfig *conf.GlobalConfiguration) (*storage.Connection, error) {
	return storage.Dial(globalConfig)
}
